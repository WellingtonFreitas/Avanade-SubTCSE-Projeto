using Avanade.SubTCSE.Projeto.Domain.Aggregates;
using Avanade.SubTCSE.Projeto.Domain.Base.Repository;
using Avanade.SubTCSE.Projeto.Domain.Base.Repository.MongoDb;
using MongoDB.Bson;
using MongoDB.Driver;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Infra.Data.Repositories.Base
{
    public class BaseRepository<TEntity, Tid>
        : IBaseRepository<TEntity, Tid> where TEntity : BaseEntity<Tid>
    {
        private readonly IMongoCollection<TEntity> _collection;

        public BaseRepository(IMongoDBContext mongoDBContext, string collectionName)
        {
            _collection = mongoDBContext.GetCollection<TEntity>(collectionName);
        }

        public virtual async Task<TEntity> AddAsync(TEntity entity)
        {
            await _collection.InsertOneAsync(entity);

            return entity;
        }

        public async void DeleteByIdAsync(Tid id)
        {
            var deleteFilter = Builders<TEntity>.Filter.Eq("_id", id);
            await _collection.DeleteOneAsync(deleteFilter);
        }

        public  async Task<List<TEntity>> FindAllAsync()
        {
           var all = await _collection.FindAsync(new BsonDocument());
            return all.ToList();
        }

        public async Task<TEntity> FindByIdAsync(Tid Id)
        {
            var filter = Builders<TEntity>.Filter.Eq("_id", Id);

            var resultado = await _collection.FindAsync(filter);

            return resultado.FirstOrDefault();
        }
    }
}
